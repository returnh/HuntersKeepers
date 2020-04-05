# frozen_string_literal: true

@crooked = Playbook.find_by name: 'The Crooked'

#####
# Background Moves
#####
[{
  name: 'Hoodlum',
  type: 'Moves::Descriptive',
  playbook_id: @crooked.id,
  description: 'You can use Tough instead of Charm to
  manipulate someone with threats of violence'
},
 {
   name: 'Burglar',
   type: 'Moves::Rollable',
   playbook_id: @crooked.id,
   description: 'When you break into a secure location, depending on your roll, you can pick some of the following:
  - you get in undetected
  - you get out undetected
  - you don’t leave a mess
  - you find what you were after',
   rating: :sharp,
   six_and_under: "On a miss, you are detected and don't gain entry, and you don't find what you are after.",
   seven_to_nine: 'On a 7-9 you can choose 2 of the following:
  - you get in undetected
  - you get out undetected
  - you don’t leave a mess
  - you find what you were after',
   ten_plus: 'On a 10+, you can choose 3 of the following:
  - you get in undetected
  - you get out undetected
  - you don’t leave a mess
  - you find what you were after'
 },
 {
   name: 'Grifter',
   type: 'Moves::Descriptive',
   playbook_id: @crooked.id,
   description: 'When you are about to manipulate
  someone, you can ask the Keeper “What will convince this person to do what I want?” The Keeper
  must answer honestly, but not necessarily completely.'
 },
 {
   name: 'Fixer',
   type: 'Moves::Rollable',
   playbook_id: @crooked.id,
   description: 'If you need to buy something, sell something, or hire someone, roll +Charm.',
   rating: :charm,
   six_and_under: 'On a miss, the only person who can help is someone who absolutely hates you.',
   seven_to_nine: 'On a 7-9 you know the only person who can do it, but there’s a complication.
    Pick one: you owe them; they screwed you over; you screwed them over',
   ten_plus: 'On a 10+ you know just the person who will be interested.'
 },
 {
   name: 'Assassin',
   type: 'Moves::Descriptive',
   playbook_id: @crooked.id,
   description: 'When you take your first shot at an unsuspecting target, do +2 Harm.'
 },
 {
   name: 'Charlatan',
   type: 'Moves::Rollable',
   playbook_id: @crooked.id,
   description: 'When you want people to think you are
  using magic, roll +Cool. You may also manipulate people with
  fortune telling. When you do that, ask “What are
  they hoping for right now?” as a free question (even
  on a miss).',
   rating: :cool,
   six_and_under: 'On a miss, you are not fooling anyone.',
   seven_to_nine: 'On a 7-9, you tripped up a couple of times, maybe someone will notice.',
   ten_plus: 'Your audience is amazed and fooled by your illusion.'
 },
 {
   name: 'Pickpocket',
   type: 'Moves::Rollable',
   playbook_id: @crooked.id,
   description: 'When you steal something small, roll
   +Charm.',
   rating: :charm,
   six_and_under: 'On a miss, you are caught pickpocketing.',
   seven_to_nine: ' On a 7-9 either you don’t grab it, you grab the wrong thing, or they remember you later: your choice.',
   ten_plus: 'On a 10 or more, you get it and they didn’t notice you taking it.'
 }].each do |move|
  Move.find_or_create_by(move)
end

#####
# Moves
#####

#####
# Improvements
#####

#####
# Gear
#####
